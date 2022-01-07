; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_busy_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_busy_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_busy = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_busy_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_radeon_gem_busy*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.radeon_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.drm_radeon_gem_busy*
  store %struct.drm_radeon_gem_busy* %18, %struct.drm_radeon_gem_busy** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %21 = load %struct.drm_radeon_gem_busy*, %struct.drm_radeon_gem_busy** %9, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_gem_busy, %struct.drm_radeon_gem_busy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %19, %struct.drm_file* %20, i32 %23)
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %10, align 8
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %26 = icmp eq %struct.drm_gem_object* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %3
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %32 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %31)
  store %struct.radeon_bo* %32, %struct.radeon_bo** %11, align 8
  %33 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %34 = call i32 @radeon_bo_wait(%struct.radeon_bo* %33, i32* %13, i32 1)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %48 [
    i32 128, label %36
    i32 129, label %40
    i32 130, label %44
  ]

36:                                               ; preds = %30
  %37 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %38 = load %struct.drm_radeon_gem_busy*, %struct.drm_radeon_gem_busy** %9, align 8
  %39 = getelementptr inbounds %struct.drm_radeon_gem_busy, %struct.drm_radeon_gem_busy* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %49

40:                                               ; preds = %30
  %41 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %42 = load %struct.drm_radeon_gem_busy*, %struct.drm_radeon_gem_busy** %9, align 8
  %43 = getelementptr inbounds %struct.drm_radeon_gem_busy, %struct.drm_radeon_gem_busy* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %49

44:                                               ; preds = %30
  %45 = load i32, i32* @RADEON_GEM_DOMAIN_CPU, align 4
  %46 = load %struct.drm_radeon_gem_busy*, %struct.drm_radeon_gem_busy** %9, align 8
  %47 = getelementptr inbounds %struct.drm_radeon_gem_busy, %struct.drm_radeon_gem_busy* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %30, %44
  br label %49

49:                                               ; preds = %48, %40, %36
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %51 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %27
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_wait(%struct.radeon_bo*, i32*, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_gem_handle_lockup(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
