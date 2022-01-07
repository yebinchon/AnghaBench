; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_move_to_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_move_to_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i64, i8*, i64, i8*, i32, i32, %struct.TYPE_4__, %struct.intel_ring_buffer* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__, %struct.drm_i915_fence_reg* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_i915_fence_reg = type { i32 }
%struct.intel_ring_buffer = type { i32 }

@I915_FENCE_REG_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_object_move_to_active(%struct.drm_i915_gem_object* %0, %struct.intel_ring_buffer* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.intel_ring_buffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_i915_fence_reg*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store %struct.intel_ring_buffer* %1, %struct.intel_ring_buffer** %4, align 8
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %17 = call i8* @intel_ring_get_seqno(%struct.intel_ring_buffer* %16)
  store i8* %17, i8** %7, align 8
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %19 = icmp eq %struct.intel_ring_buffer* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %23, i32 0, i32 8
  store %struct.intel_ring_buffer* %22, %struct.intel_ring_buffer** %24, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %30, i32 0, i32 7
  %32 = call i32 @drm_gem_object_reference(%struct.TYPE_4__* %31)
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 6
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = call i32 @list_move_tail(i32* %37, i32* %40)
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %42, i32 0, i32 5
  %44 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %44, i32 0, i32 0
  %46 = call i32 @list_move_tail(i32* %43, i32* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %35
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @I915_FENCE_REG_NONE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %54
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 1
  %66 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %65, align 8
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %66, i64 %69
  store %struct.drm_i915_fence_reg* %70, %struct.drm_i915_fence_reg** %8, align 8
  %71 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %8, align 8
  %72 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %71, i32 0, i32 0
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @list_move_tail(i32* %72, i32* %75)
  br label %77

77:                                               ; preds = %63, %54
  br label %78

78:                                               ; preds = %77, %35
  ret void
}

declare dso_local i8* @intel_ring_get_seqno(%struct.intel_ring_buffer*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @drm_gem_object_reference(%struct.TYPE_4__*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
