; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_get_tiling_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_get_tiling_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_get_tiling = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_get_tiling_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_gem_get_tiling*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_radeon_gem_get_tiling*
  store %struct.drm_radeon_gem_get_tiling* %13, %struct.drm_radeon_gem_get_tiling** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = load %struct.drm_radeon_gem_get_tiling*, %struct.drm_radeon_gem_get_tiling** %8, align 8
  %18 = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, %struct.drm_radeon_gem_get_tiling* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %15, %struct.drm_file* %16, i32 %19)
  store %struct.drm_gem_object* %20, %struct.drm_gem_object** %9, align 8
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %22 = icmp eq %struct.drm_gem_object* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %50

26:                                               ; preds = %3
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %28 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %27)
  store %struct.radeon_bo* %28, %struct.radeon_bo** %10, align 8
  %29 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %30 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %29, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %46

37:                                               ; preds = %26
  %38 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %39 = load %struct.drm_radeon_gem_get_tiling*, %struct.drm_radeon_gem_get_tiling** %8, align 8
  %40 = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, %struct.drm_radeon_gem_get_tiling* %39, i32 0, i32 1
  %41 = load %struct.drm_radeon_gem_get_tiling*, %struct.drm_radeon_gem_get_tiling** %8, align 8
  %42 = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, %struct.drm_radeon_gem_get_tiling* %41, i32 0, i32 0
  %43 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %38, i32* %40, i32* %42)
  %44 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %45 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %44)
  br label %46

46:                                               ; preds = %37, %36
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %48 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %23
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
