; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_crtc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.drm_crtc = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.drm_crtc_funcs*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32* }
%struct.drm_crtc_funcs = type { i32 }

@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_crtc_init(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.drm_crtc_funcs* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_crtc_funcs*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  store %struct.drm_crtc_funcs* %2, %struct.drm_crtc_funcs** %6, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 6
  store %struct.drm_device* %8, %struct.drm_device** %10, align 8
  %11 = load %struct.drm_crtc_funcs*, %struct.drm_crtc_funcs** %6, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 5
  store %struct.drm_crtc_funcs* %11, %struct.drm_crtc_funcs** %13, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = call i32 @drm_modeset_lock_all(%struct.drm_device* %16)
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 4
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 4
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock_nest_lock(i32* %22, i32* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 3
  %30 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %31 = call i32 @drm_mode_object_get(%struct.drm_device* %27, %struct.TYPE_4__* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %52

35:                                               ; preds = %3
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 2
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 1
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %42, i32* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %35, %34
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock_nest_lock(i32*, i32*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
