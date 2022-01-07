; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_handle_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_handle_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_gem_object*, %struct.drm_file*)* }
%struct.drm_gem_object = type { %struct.drm_device* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_handle_delete(%struct.drm_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %9 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %12 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %11, i32 0, i32 1
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.drm_gem_object* @idr_find(i32* %12, i32 %13)
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %7, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %16 = icmp eq %struct.drm_gem_object* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 0
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %6, align 8
  %27 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %28 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %27, i32 0, i32 1
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @idr_remove(i32* %28, i32 %29)
  %31 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %32 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %35 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %36 = call i32 @drm_gem_remove_prime_handles(%struct.drm_gem_object* %34, %struct.drm_file* %35)
  %37 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %40, align 8
  %42 = icmp ne i32 (%struct.drm_gem_object*, %struct.drm_file*)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %23
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %47, align 8
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %50 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %51 = call i32 %48(%struct.drm_gem_object* %49, %struct.drm_file* %50)
  br label %52

52:                                               ; preds = %43, %23
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %54 = call i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @drm_gem_remove_prime_handles(%struct.drm_gem_object*, %struct.drm_file*) #1

declare dso_local i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
