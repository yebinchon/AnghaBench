; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_user_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_user_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.nouveau_framebuffer = type { %struct.drm_framebuffer }
%struct.drm_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @nouveau_user_framebuffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @nouveau_user_framebuffer_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.nouveau_framebuffer*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %11, %struct.drm_file* %12, i32 %17)
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %9, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %20 = icmp ne %struct.drm_gem_object* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.drm_framebuffer* @ERR_PTR(i32 %23)
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %4, align 8
  br label %51

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.nouveau_framebuffer* @kzalloc(i32 4, i32 %26)
  store %struct.nouveau_framebuffer* %27, %struct.nouveau_framebuffer** %8, align 8
  %28 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %8, align 8
  %29 = icmp ne %struct.nouveau_framebuffer* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.drm_framebuffer* @ERR_PTR(i32 %32)
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %4, align 8
  br label %51

34:                                               ; preds = %25
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %8, align 8
  %37 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = call i32 @nouveau_gem_object(%struct.drm_gem_object* %38)
  %40 = call i32 @nouveau_framebuffer_init(%struct.drm_device* %35, %struct.nouveau_framebuffer* %36, %struct.drm_mode_fb_cmd2* %37, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %45 = call i32 @drm_gem_object_unreference(%struct.drm_gem_object* %44)
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.drm_framebuffer* @ERR_PTR(i32 %46)
  store %struct.drm_framebuffer* %47, %struct.drm_framebuffer** %4, align 8
  br label %51

48:                                               ; preds = %34
  %49 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %8, align 8
  %50 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %49, i32 0, i32 0
  store %struct.drm_framebuffer* %50, %struct.drm_framebuffer** %4, align 8
  br label %51

51:                                               ; preds = %48, %43, %30, %21
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %52
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.nouveau_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_framebuffer_init(%struct.drm_device*, %struct.nouveau_framebuffer*, %struct.drm_mode_fb_cmd2*, i32) #1

declare dso_local i32 @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
