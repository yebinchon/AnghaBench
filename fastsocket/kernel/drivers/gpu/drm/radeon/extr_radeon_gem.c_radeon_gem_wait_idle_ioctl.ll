; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_wait_idle_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_wait_idle_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_wait_idle = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.radeon_device*, %struct.radeon_bo*)* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_wait_idle_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_radeon_gem_wait_idle*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.radeon_bo*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_radeon_gem_wait_idle*
  store %struct.drm_radeon_gem_wait_idle* %17, %struct.drm_radeon_gem_wait_idle** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = load %struct.drm_radeon_gem_wait_idle*, %struct.drm_radeon_gem_wait_idle** %9, align 8
  %21 = getelementptr inbounds %struct.drm_radeon_gem_wait_idle, %struct.drm_radeon_gem_wait_idle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %18, %struct.drm_file* %19, i32 %22)
  store %struct.drm_gem_object* %23, %struct.drm_gem_object** %10, align 8
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %25 = icmp eq %struct.drm_gem_object* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %3
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %31 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %30)
  store %struct.radeon_bo* %31, %struct.radeon_bo** %11, align 8
  %32 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %33 = call i32 @radeon_bo_wait(%struct.radeon_bo* %32, i32* null, i32 0)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %42 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.radeon_device*, %struct.radeon_bo*)*, i32 (%struct.radeon_device*, %struct.radeon_bo*)** %46, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %49 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %50 = call i32 %47(%struct.radeon_device* %48, %struct.radeon_bo* %49)
  br label %51

51:                                               ; preds = %40, %29
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %53 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %26
  %59 = load i32, i32* %4, align 4
  ret i32 %59
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
