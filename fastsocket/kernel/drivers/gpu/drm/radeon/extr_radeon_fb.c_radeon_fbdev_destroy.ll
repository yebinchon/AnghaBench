; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.radeon_fbdev = type { %struct.TYPE_4__, %struct.radeon_framebuffer }
%struct.TYPE_4__ = type { %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_framebuffer = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.radeon_fbdev*)* @radeon_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fbdev_destroy(%struct.drm_device* %0, %struct.radeon_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_fbdev*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.radeon_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.radeon_fbdev* %1, %struct.radeon_fbdev** %4, align 8
  %7 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %8 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %7, i32 0, i32 1
  store %struct.radeon_framebuffer* %8, %struct.radeon_framebuffer** %6, align 8
  %9 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %13 = icmp ne %struct.fb_info* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %5, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %20 = call i32 @unregister_framebuffer(%struct.fb_info* %19)
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = call i32 @fb_dealloc_cmap(%struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %26, %14
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = call i32 @framebuffer_release(%struct.fb_info* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @radeonfb_destroy_pinned_object(i32* %41)
  %43 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %46, i32 0, i32 0
  %48 = call i32 @drm_fb_helper_fini(%struct.TYPE_4__* %47)
  %49 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %6, align 8
  %50 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %49, i32 0, i32 0
  %51 = call i32 @drm_framebuffer_unregister_private(i32* %50)
  %52 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %52, i32 0, i32 0
  %54 = call i32 @drm_framebuffer_cleanup(i32* %53)
  ret i32 0
}

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_3__*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @radeonfb_destroy_pinned_object(i32*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(i32*) #1

declare dso_local i32 @drm_framebuffer_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
