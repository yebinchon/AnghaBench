; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_handle_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_handle_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32, i32 }

@drm_gem_object_ref_bug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_object_handle_free(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %4, i32 0, i32 2
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @idr_remove(i32* %16, i32 %19)
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %27 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %26, i32 0, i32 0
  %28 = load i32, i32* @drm_gem_object_ref_bug, align 4
  %29 = call i32 @kref_put(i32* %27, i32 %28)
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
