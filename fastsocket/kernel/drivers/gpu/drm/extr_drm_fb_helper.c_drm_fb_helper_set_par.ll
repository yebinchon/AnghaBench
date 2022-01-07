; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.drm_fb_helper* }
%struct.fb_var_screeninfo = type { i64 }
%struct.drm_fb_helper = type { i32, i32, %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"PIXEL CLOCK SET\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %10, align 8
  store %struct.drm_fb_helper* %11, %struct.drm_fb_helper** %4, align 8
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 3
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  store %struct.fb_var_screeninfo* %16, %struct.fb_var_screeninfo** %6, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = call i32 @drm_modeset_lock_all(%struct.drm_device* %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %50, %25
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %31 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %36 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @drm_mode_set_config_internal(i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %66

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %54)
  %56 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %57 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %62 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %64 = call i32 @drm_fb_helper_hotplug_event(%struct.drm_fb_helper* %63)
  br label %65

65:                                               ; preds = %60, %53
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %45, %21
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_set_config_internal(i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_hotplug_event(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
