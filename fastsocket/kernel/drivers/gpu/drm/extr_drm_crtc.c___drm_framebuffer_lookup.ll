; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c___drm_framebuffer_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c___drm_framebuffer_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_mode_object = type { i64, i64 }

@DRM_MODE_OBJECT_FB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, i64)* @__drm_framebuffer_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @__drm_framebuffer_lookup(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_mode_object*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.drm_mode_object* @idr_find(i32* %13, i64 %14)
  store %struct.drm_mode_object* %15, %struct.drm_mode_object** %5, align 8
  %16 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %17 = icmp ne %struct.drm_mode_object* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %20 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DRM_MODE_OBJECT_FB, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %26 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18, %2
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %6, align 8
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %33 = call %struct.drm_framebuffer* @obj_to_fb(%struct.drm_mode_object* %32)
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %6, align 8
  br label %34

34:                                               ; preds = %31, %30
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  ret %struct.drm_framebuffer* %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_mode_object* @idr_find(i32*, i64) #1

declare dso_local %struct.drm_framebuffer* @obj_to_fb(%struct.drm_mode_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
