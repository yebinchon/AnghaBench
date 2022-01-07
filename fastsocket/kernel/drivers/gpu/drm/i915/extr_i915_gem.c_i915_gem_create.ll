; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_device*, i64, i32*)* @i915_gem_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_create(%struct.drm_file* %0, %struct.drm_device* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i64 @roundup(i64 %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %60

21:                                               ; preds = %4
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device* %22, i64 %23)
  store %struct.drm_i915_gem_object* %24, %struct.drm_i915_gem_object** %10, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %26 = icmp eq %struct.drm_i915_gem_object* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %60

30:                                               ; preds = %21
  %31 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %33 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %32, i32 0, i32 0
  %34 = call i32 @drm_gem_handle_create(%struct.drm_file* %31, %struct.TYPE_4__* %33, i32* %12)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %38, i32 0, i32 0
  %40 = call i32 @drm_gem_object_release(%struct.TYPE_4__* %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i915_gem_info_remove_obj(i32 %43, i32 %47)
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %50 = call i32 @i915_gem_object_free(%struct.drm_i915_gem_object* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %30
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %53, i32 0, i32 0
  %55 = call i32 @drm_gem_object_unreference(%struct.TYPE_4__* %54)
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %57 = call i32 @trace_i915_gem_object_create(%struct.drm_i915_gem_object* %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %37, %27, %18
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device*, i64) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_4__*) #1

declare dso_local i32 @i915_gem_info_remove_obj(i32, i32) #1

declare dso_local i32 @i915_gem_object_free(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.TYPE_4__*) #1

declare dso_local i32 @trace_i915_gem_object_create(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
