; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_open_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_open_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_open = type { i32, i32, i64 }
%struct.drm_gem_object = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_open_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_open*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_gem_open*
  store %struct.drm_gem_open* %13, %struct.drm_gem_open** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRIVER_GEM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 1
  %31 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %32 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.drm_gem_object* @idr_find(i32* %30, i32 %34)
  store %struct.drm_gem_object* %35, %struct.drm_gem_object** %9, align 8
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %37 = icmp ne %struct.drm_gem_object* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %40 = call i32 @drm_gem_object_reference(%struct.drm_gem_object* %39)
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %46 = icmp ne %struct.drm_gem_object* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %69

50:                                               ; preds = %41
  %51 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %53 = call i32 @drm_gem_handle_create(%struct.drm_file* %51, %struct.drm_gem_object* %52, i32* %11)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %55 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %69

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %63 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %65 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %68 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %60, %58, %47, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @idr_find(i32*, i32) #1

declare dso_local i32 @drm_gem_object_reference(%struct.drm_gem_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
