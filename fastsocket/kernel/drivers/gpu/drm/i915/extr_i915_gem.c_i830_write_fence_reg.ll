; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i830_write_fence_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i830_write_fence_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_i915_gem_object = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I830_FENCE_START_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"object 0x%08x not 512K or pot-size 0x%08x aligned\0A\00", align 1
@I915_TILING_Y = common dso_local global i64 0, align 8
@I830_FENCE_TILING_Y_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_REG_VALID = common dso_local global i32 0, align 4
@FENCE_REG_830_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.drm_i915_gem_object*)* @i830_write_fence_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i830_write_fence_reg(%struct.drm_device* %0, i32 %1, %struct.drm_i915_gem_object* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %15 = icmp ne %struct.drm_i915_gem_object* %14, null
  br i1 %15, label %16, label %85

16:                                               ; preds = %3
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @I830_FENCE_START_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 0, %31
  %33 = and i32 %30, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %36, %29, %16
  %45 = phi i1 [ true, %29 ], [ true, %16 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %48 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @WARN(i32 %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 128
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @ffs(i32 %56)
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %60 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %8, align 4
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %63 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @I915_TILING_Y, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %44
  %68 = load i32, i32* @I830_FENCE_TILING_Y_SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %67, %44
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @I830_FENCE_SIZE_BITS(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @I830_FENCE_PITCH_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @I830_FENCE_REG_VALID, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %86

85:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i64, i64* @FENCE_REG_830_0, align 8
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @I915_WRITE(i64 %91, i32 %92)
  %94 = load i64, i64* @FENCE_REG_830_0, align 8
  %95 = load i32, i32* %5, align 4
  %96 = mul nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %94, %97
  %99 = call i32 @POSTING_READ(i64 %98)
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @I830_FENCE_SIZE_BITS(i32) #1

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @POSTING_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
