; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_get_fence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_get_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.drm_i915_fence_reg* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_fence_reg = type { %struct.drm_i915_gem_object*, i32 }

@I915_TILING_NONE = common dso_local global i64 0, align 8
@I915_FENCE_REG_NONE = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_get_fence(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_fence_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I915_TILING_NONE, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %29 = call i32 @i915_gem_object_wait_fence(%struct.drm_i915_gem_object* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @I915_FENCE_REG_NONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 1
  %44 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %43, align 8
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %44, i64 %47
  store %struct.drm_i915_fence_reg* %48, %struct.drm_i915_fence_reg** %7, align 8
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %50 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %41
  %54 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %7, align 8
  %55 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %54, i32 0, i32 1
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @list_move_tail(i32* %55, i32* %58)
  store i32 0, i32* %2, align 4
  br label %100

60:                                               ; preds = %41
  br label %93

61:                                               ; preds = %35
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %66 = call %struct.drm_i915_fence_reg* @i915_find_fence_reg(%struct.drm_device* %65)
  store %struct.drm_i915_fence_reg* %66, %struct.drm_i915_fence_reg** %7, align 8
  %67 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %7, align 8
  %68 = icmp eq %struct.drm_i915_fence_reg* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EDEADLK, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %100

72:                                               ; preds = %64
  %73 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %7, align 8
  %74 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %73, i32 0, i32 0
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %74, align 8
  %76 = icmp ne %struct.drm_i915_gem_object* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %7, align 8
  %79 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %78, i32 0, i32 0
  %80 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %79, align 8
  store %struct.drm_i915_gem_object* %80, %struct.drm_i915_gem_object** %9, align 8
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %82 = call i32 @i915_gem_object_wait_fence(%struct.drm_i915_gem_object* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %100

87:                                               ; preds = %77
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %89 = call i32 @i915_gem_object_fence_lost(%struct.drm_i915_gem_object* %88)
  br label %90

90:                                               ; preds = %87, %72
  br label %92

91:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %100

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %60
  %94 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %95 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %7, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @i915_gem_object_update_fence(%struct.drm_i915_gem_object* %94, %struct.drm_i915_fence_reg* %95, i32 %96)
  %98 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %99 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %93, %91, %85, %69, %53, %32
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @i915_gem_object_wait_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local %struct.drm_i915_fence_reg* @i915_find_fence_reg(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_object_fence_lost(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_update_fence(%struct.drm_i915_gem_object*, %struct.drm_i915_fence_reg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
