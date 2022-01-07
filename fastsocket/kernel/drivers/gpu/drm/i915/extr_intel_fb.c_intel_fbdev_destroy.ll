; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intel_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intel_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_fbdev = type { %struct.TYPE_6__, %struct.intel_framebuffer }
%struct.TYPE_6__ = type { %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.intel_framebuffer = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.intel_fbdev*)* @intel_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fbdev_destroy(%struct.drm_device* %0, %struct.intel_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_fbdev*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.intel_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.intel_fbdev* %1, %struct.intel_fbdev** %4, align 8
  %7 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %8 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %7, i32 0, i32 1
  store %struct.intel_framebuffer* %8, %struct.intel_framebuffer** %6, align 8
  %9 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %10 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %13 = icmp ne %struct.fb_info* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %16 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %5, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %20 = call i32 @unregister_framebuffer(%struct.fb_info* %19)
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @iounmap(i32 %23)
  %25 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %14
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = call i32 @fb_dealloc_cmap(%struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %30, %14
  %35 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %36 = call i32 @framebuffer_release(%struct.fb_info* %35)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %39 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %38, i32 0, i32 0
  %40 = call i32 @drm_fb_helper_fini(%struct.TYPE_6__* %39)
  %41 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %42 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %41, i32 0, i32 1
  %43 = call i32 @drm_framebuffer_unregister_private(i32* %42)
  %44 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %45 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %44, i32 0, i32 1
  %46 = call i32 @drm_framebuffer_cleanup(i32* %45)
  %47 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %48 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %37
  %52 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %53 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @drm_gem_object_unreference_unlocked(i32* %55)
  %57 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %58 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %57, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %58, align 8
  br label %59

59:                                               ; preds = %51, %37
  ret void
}

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_5__*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.TYPE_6__*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(i32*) #1

declare dso_local i32 @drm_framebuffer_cleanup(i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
