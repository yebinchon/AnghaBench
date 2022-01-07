; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_stolen.c__i915_gem_object_create_stolen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_stolen.c__i915_gem_object_create_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32, i32, %struct.TYPE_2__, %struct.drm_mm_node*, i32* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.drm_device = type { i32 }
%struct.drm_mm_node = type { i32, i32 }

@i915_gem_object_stolen_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i8* null, align 8
@I915_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_device*, %struct.drm_mm_node*)* @_i915_gem_object_create_stolen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @_i915_gem_object_create_stolen(%struct.drm_device* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = call %struct.drm_i915_gem_object* @i915_gem_object_alloc(%struct.drm_device* %7)
  store %struct.drm_i915_gem_object* %8, %struct.drm_i915_gem_object** %6, align 8
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %10 = icmp eq %struct.drm_i915_gem_object* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 3
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %17 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @drm_gem_private_object_init(%struct.drm_device* %13, %struct.TYPE_2__* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %60

22:                                               ; preds = %12
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %24 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %23, i32* @i915_gem_object_stolen_ops)
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %27 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %30 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @i915_pages_create_for_stolen(%struct.drm_device* %25, i32 %28, i32 %31)
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %60

40:                                               ; preds = %22
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 4
  store %struct.drm_mm_node* %45, %struct.drm_mm_node** %47, align 8
  %48 = load i8*, i8** @I915_GEM_DOMAIN_GTT, align 8
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %50 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @I915_GEM_DOMAIN_GTT, align 8
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* @I915_CACHE_NONE, align 4
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  store %struct.drm_i915_gem_object* %59, %struct.drm_i915_gem_object** %3, align 8
  br label %63

60:                                               ; preds = %39, %21
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %62 = call i32 @i915_gem_object_free(%struct.drm_i915_gem_object* %61)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %63

63:                                               ; preds = %60, %40, %11
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %64
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(%struct.drm_device*) #1

declare dso_local i64 @drm_gem_private_object_init(%struct.drm_device*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i32* @i915_pages_create_for_stolen(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @i915_gem_object_free(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
