; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_debug_leave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_debug_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_mode_set }
%struct.drm_mode_set = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32, i32, i32, %struct.drm_crtc_helper_funcs* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* }
%struct.drm_framebuffer = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no fb to restore??\0A\00", align 1
@LEAVE_ATOMIC_MODE_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_debug_leave(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_mode_set*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %10, align 8
  store %struct.drm_fb_helper* %11, %struct.drm_fb_helper** %3, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %64, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %12
  %19 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %20 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.drm_mode_set* %25, %struct.drm_mode_set** %8, align 8
  %26 = load %struct.drm_mode_set*, %struct.drm_mode_set** %8, align 8
  %27 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 0
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %27, align 8
  store %struct.drm_crtc* %28, %struct.drm_crtc** %4, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 3
  %31 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %30, align 8
  store %struct.drm_crtc_helper_funcs* %31, %struct.drm_crtc_helper_funcs** %5, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %33 = call %struct.drm_framebuffer* @drm_mode_config_fb(%struct.drm_crtc* %32)
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %6, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %18
  br label %64

39:                                               ; preds = %18
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %41 = icmp ne %struct.drm_framebuffer* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %64

44:                                               ; preds = %39
  %45 = load %struct.drm_mode_set*, %struct.drm_mode_set** %8, align 8
  %46 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %45, i32 0, i32 0
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %46, align 8
  %48 = call i32 @drm_fb_helper_restore_lut_atomic(%struct.drm_crtc* %47)
  %49 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %5, align 8
  %50 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %49, i32 0, i32 0
  %51 = load i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)** %50, align 8
  %52 = load %struct.drm_mode_set*, %struct.drm_mode_set** %8, align 8
  %53 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %52, i32 0, i32 0
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %53, align 8
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %57 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %60 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @LEAVE_ATOMIC_MODE_SET, align 4
  %63 = call i32 %51(%struct.drm_crtc* %54, %struct.drm_framebuffer* %55, i32 %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %44, %42, %38
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %12

67:                                               ; preds = %12
  ret i32 0
}

declare dso_local %struct.drm_framebuffer* @drm_mode_config_fb(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_fb_helper_restore_lut_atomic(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
