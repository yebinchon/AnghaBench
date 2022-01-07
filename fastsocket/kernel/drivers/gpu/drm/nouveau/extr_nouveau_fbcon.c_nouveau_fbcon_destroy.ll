; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_7__, %struct.nouveau_framebuffer }
%struct.TYPE_7__ = type { %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_framebuffer = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nouveau_fbdev*)* @nouveau_fbcon_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fbcon_destroy(%struct.drm_device* %0, %struct.nouveau_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.nouveau_framebuffer*, align 8
  %6 = alloca %struct.fb_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_fbdev* %1, %struct.nouveau_fbdev** %4, align 8
  %7 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %7, i32 0, i32 1
  store %struct.nouveau_framebuffer* %8, %struct.nouveau_framebuffer** %5, align 8
  %9 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %13 = icmp ne %struct.fb_info* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %6, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %20 = call i32 @unregister_framebuffer(%struct.fb_info* %19)
  %21 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = call i32 @fb_dealloc_cmap(%struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %26, %14
  %31 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %32 = call i32 @framebuffer_release(%struct.fb_info* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %35 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %40 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @nouveau_bo_unmap(%struct.TYPE_5__* %41)
  %43 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %44 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %46, i32 0, i32 2
  %48 = call i32 @nouveau_bo_vma_del(%struct.TYPE_5__* %45, i32* %47)
  %49 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %50 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @drm_gem_object_unreference_unlocked(i32 %53)
  %55 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %56 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %55, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %56, align 8
  br label %57

57:                                               ; preds = %38, %33
  %58 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %59 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %58, i32 0, i32 0
  %60 = call i32 @drm_fb_helper_fini(%struct.TYPE_7__* %59)
  %61 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %62 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %61, i32 0, i32 0
  %63 = call i32 @drm_framebuffer_unregister_private(i32* %62)
  %64 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %65 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %64, i32 0, i32 0
  %66 = call i32 @drm_framebuffer_cleanup(i32* %65)
  ret i32 0
}

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_6__*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @nouveau_bo_unmap(%struct.TYPE_5__*) #1

declare dso_local i32 @nouveau_bo_vma_del(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(i32*) #1

declare dso_local i32 @drm_framebuffer_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
