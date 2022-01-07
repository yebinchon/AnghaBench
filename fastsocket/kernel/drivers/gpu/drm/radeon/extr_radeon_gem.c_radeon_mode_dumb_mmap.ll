; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_mode_dumb_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_mode_dumb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_mode_dumb_mmap(%struct.drm_file* %0, %struct.drm_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.radeon_bo*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %12, %struct.drm_file* %13, i32 %14)
  store %struct.drm_gem_object* %15, %struct.drm_gem_object** %10, align 8
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %17 = icmp eq %struct.drm_gem_object* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %4
  %22 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %23 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %22)
  store %struct.radeon_bo* %23, %struct.radeon_bo** %11, align 8
  %24 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %25 = call i32 @radeon_bo_mmap_offset(%struct.radeon_bo* %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %28 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_mmap_offset(%struct.radeon_bo*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
