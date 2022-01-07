; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i965_write_fence_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i965_write_fence_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_i915_gem_object = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FENCE_REG_SANDYBRIDGE_0 = common dso_local global i32 0, align 4
@SANDYBRIDGE_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@FENCE_REG_965_0 = common dso_local global i32 0, align 4
@I965_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@I915_TILING_Y = common dso_local global i64 0, align 8
@I965_FENCE_TILING_Y_SHIFT = common dso_local global i32 0, align 4
@I965_FENCE_REG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.drm_i915_gem_object*)* @i965_write_fence_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_write_fence_reg(%struct.drm_device* %0, i32 %1, %struct.drm_i915_gem_object* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 6
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @FENCE_REG_SANDYBRIDGE_0, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @SANDYBRIDGE_FENCE_PITCH_SHIFT, align 4
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @FENCE_REG_965_0, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @I965_FENCE_PITCH_SHIFT, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %28 = icmp ne %struct.drm_i915_gem_object* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 4096
  %41 = and i32 %40, -4096
  %42 = shl i32 %41, 32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, -4096
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %50 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 128
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %59 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @I915_TILING_Y, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %29
  %64 = load i32, i32* @I965_FENCE_TILING_Y_SHIFT, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %29
  %69 = load i32, i32* @I965_FENCE_REG_VALID, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %73

72:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @I915_WRITE64(i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @POSTING_READ(i32 %81)
  ret void
}

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE64(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
