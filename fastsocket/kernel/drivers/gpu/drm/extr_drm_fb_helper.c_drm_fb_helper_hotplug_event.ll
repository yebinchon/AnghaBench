; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, i32, %struct.drm_device*, %struct.TYPE_3__* }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_hotplug_event(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  %9 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %10 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %9, i32 0, i32 2
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %19 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %18, i32 0, i32 2
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %25 = call i32 @drm_fb_helper_is_bound(%struct.drm_fb_helper* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %17
  %28 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %29 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %31 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %30, i32 0, i32 2
  %32 = load %struct.drm_device*, %struct.drm_device** %31, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  store i32 0, i32* %2, align 4
  br label %73

36:                                               ; preds = %17
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %39 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %44 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %49 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @drm_fb_helper_probe_connector_modes(%struct.drm_fb_helper* %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %58 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %57, i32 0, i32 2
  %59 = load %struct.drm_device*, %struct.drm_device** %58, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = call i32 @drm_modeset_lock_all(%struct.drm_device* %63)
  %65 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %66 = call i32 @drm_setup_crtcs(%struct.drm_fb_helper* %65)
  %67 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %68 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %67)
  %69 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %70 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @drm_fb_helper_set_par(i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %36, %27, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_fb_helper_is_bound(%struct.drm_fb_helper*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_fb_helper_probe_connector_modes(%struct.drm_fb_helper*, i32, i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_setup_crtcs(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_set_par(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
