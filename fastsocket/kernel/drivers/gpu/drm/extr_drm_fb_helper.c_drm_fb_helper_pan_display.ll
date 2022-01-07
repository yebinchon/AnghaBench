; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__, %struct.drm_fb_helper* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_fb_helper = type { i32, %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { %struct.drm_mode_set }
%struct.drm_mode_set = type { i64, i32, i32, %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_mode_set*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %13, align 8
  store %struct.drm_fb_helper* %14, %struct.drm_fb_helper** %6, align 8
  %15 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %16 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %15, i32 0, i32 2
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %19 = call i32 @drm_modeset_lock_all(%struct.drm_device* %18)
  %20 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %21 = call i32 @drm_fb_helper_is_bound(%struct.drm_fb_helper* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %93

28:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %86, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %29
  %36 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %37 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %42, i32 0, i32 3
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %43, align 8
  store %struct.drm_crtc* %44, %struct.drm_crtc** %9, align 8
  %45 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %46 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.drm_mode_set* %51, %struct.drm_mode_set** %8, align 8
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_mode_set*, %struct.drm_mode_set** %8, align 8
  %56 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_mode_set*, %struct.drm_mode_set** %8, align 8
  %61 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.drm_mode_set*, %struct.drm_mode_set** %8, align 8
  %63 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %35
  %67 = load %struct.drm_mode_set*, %struct.drm_mode_set** %8, align 8
  %68 = call i32 @drm_mode_set_config_internal(%struct.drm_mode_set* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %71, %66
  br label %85

85:                                               ; preds = %84, %35
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %29

89:                                               ; preds = %29
  %90 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %91 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_is_bound(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_set_config_internal(%struct.drm_mode_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
