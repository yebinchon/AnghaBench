; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_update_fence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_update_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_fence_reg = type { i32, %struct.drm_i915_gem_object* }

@i915_gem_write_fence__ipi = common dso_local global i32 0, align 4
@I915_FENCE_REG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*, %struct.drm_i915_fence_reg*, i32)* @i915_gem_object_update_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_object_update_fence(%struct.drm_i915_gem_object* %0, %struct.drm_i915_fence_reg* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.drm_i915_fence_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.drm_i915_fence_reg* %1, %struct.drm_i915_fence_reg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %8, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %18 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %19 = call i32 @fence_number(%struct.drm_i915_private* %17, %struct.drm_i915_fence_reg* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  %24 = call i64 @HAS_LLC(%struct.drm_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @i915_gem_write_fence__ipi, align 4
  %28 = call i32 @on_each_cpu(i32 %27, i32* null, i32 1)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi %struct.drm_i915_gem_object* [ %35, %34 ], [ null, %36 ]
  %39 = call i32 @i915_gem_write_fence(%struct.drm_device* %30, i32 %31, %struct.drm_i915_gem_object* %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %47 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %48 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %47, i32 0, i32 1
  store %struct.drm_i915_gem_object* %46, %struct.drm_i915_gem_object** %48, align 8
  %49 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %50 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %49, i32 0, i32 0
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @list_move_tail(i32* %50, i32* %53)
  br label %64

55:                                               ; preds = %37
  %56 = load i32, i32* @I915_FENCE_REG_NONE, align 4
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %60 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %59, i32 0, i32 1
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %60, align 8
  %61 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %62 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %61, i32 0, i32 0
  %63 = call i32 @list_del_init(i32* %62)
  br label %64

64:                                               ; preds = %55, %42
  ret void
}

declare dso_local i32 @fence_number(%struct.drm_i915_private*, %struct.drm_i915_fence_reg*) #1

declare dso_local i64 @HAS_LLC(%struct.drm_device*) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32 @i915_gem_write_fence(%struct.drm_device*, i32, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
