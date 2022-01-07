; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_framebuffer = type { i32, i32, %struct.drm_framebuffer_funcs*, %struct.drm_device*, i32, i32 }
%struct.drm_framebuffer_funcs = type { i32 }

@DRM_MODE_OBJECT_FB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_framebuffer_init(%struct.drm_device* %0, %struct.drm_framebuffer* %1, %struct.drm_framebuffer_funcs* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_framebuffer_funcs*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %5, align 8
  store %struct.drm_framebuffer_funcs* %2, %struct.drm_framebuffer_funcs** %6, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 5
  %14 = call i32 @kref_init(i32* %13)
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 3
  store %struct.drm_device* %18, %struct.drm_device** %20, align 8
  %21 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %6, align 8
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 2
  store %struct.drm_framebuffer_funcs* %21, %struct.drm_framebuffer_funcs** %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 1
  %27 = load i32, i32* @DRM_MODE_OBJECT_FB, align 4
  %28 = call i32 @drm_mode_object_get(%struct.drm_device* %24, i32* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %46

32:                                               ; preds = %3
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %34 = call i32 @drm_framebuffer_reference(%struct.drm_framebuffer* %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 0
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @list_add(i32* %41, i32* %44)
  br label %46

46:                                               ; preds = %32, %31
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @drm_framebuffer_reference(%struct.drm_framebuffer*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
