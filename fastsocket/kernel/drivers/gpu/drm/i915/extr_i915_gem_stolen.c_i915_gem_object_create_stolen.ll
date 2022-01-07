; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_stolen.c_i915_gem_object_create_stolen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_stolen.c_i915_gem_object_create_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.drm_mm_node = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"creating stolen object: size=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_stolen(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %51

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.drm_mm_node* @drm_mm_search_free(i32* %27, i32 %28, i32 4096, i32 0)
  store %struct.drm_mm_node* %29, %struct.drm_mm_node** %8, align 8
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %31 = icmp ne %struct.drm_mm_node* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.drm_mm_node* @drm_mm_get_block(%struct.drm_mm_node* %33, i32 %34, i32 4096)
  store %struct.drm_mm_node* %35, %struct.drm_mm_node** %8, align 8
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %38 = icmp eq %struct.drm_mm_node* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %51

40:                                               ; preds = %36
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %43 = call %struct.drm_i915_gem_object* @_i915_gem_object_create_stolen(%struct.drm_device* %41, %struct.drm_mm_node* %42)
  store %struct.drm_i915_gem_object* %43, %struct.drm_i915_gem_object** %7, align 8
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %45 = icmp ne %struct.drm_i915_gem_object* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  store %struct.drm_i915_gem_object* %47, %struct.drm_i915_gem_object** %3, align 8
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %50 = call i32 @drm_mm_put_block(%struct.drm_mm_node* %49)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %51

51:                                               ; preds = %48, %46, %39, %23, %17
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %52
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local %struct.drm_mm_node* @drm_mm_search_free(i32*, i32, i32, i32) #1

declare dso_local %struct.drm_mm_node* @drm_mm_get_block(%struct.drm_mm_node*, i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @_i915_gem_object_create_stolen(%struct.drm_device*, %struct.drm_mm_node*) #1

declare dso_local i32 @drm_mm_put_block(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
