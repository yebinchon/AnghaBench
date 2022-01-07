; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.drm_gem_object*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_gem_object_alloc(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.drm_gem_object* @kzalloc(i32 4, i32 %7)
  store %struct.drm_gem_object* %8, %struct.drm_gem_object** %6, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %10 = icmp ne %struct.drm_gem_object* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @drm_gem_object_init(%struct.drm_device* %13, %struct.drm_gem_object* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (%struct.drm_gem_object*)*, i64 (%struct.drm_gem_object*)** %23, align 8
  %25 = icmp ne i64 (%struct.drm_gem_object*)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (%struct.drm_gem_object*)*, i64 (%struct.drm_gem_object*)** %30, align 8
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %33 = call i64 %31(%struct.drm_gem_object* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %38

36:                                               ; preds = %26, %19
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  store %struct.drm_gem_object* %37, %struct.drm_gem_object** %3, align 8
  br label %46

38:                                               ; preds = %35
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %40 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fput(i32 %41)
  br label %43

43:                                               ; preds = %38, %18, %11
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %45 = call i32 @kfree(%struct.drm_gem_object* %44)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %3, align 8
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %47
}

declare dso_local %struct.drm_gem_object* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_gem_object_init(%struct.drm_device*, %struct.drm_gem_object*, i64) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @kfree(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
