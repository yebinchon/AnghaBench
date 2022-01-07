; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_swizzling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_swizzling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@I915_BIT_6_SWIZZLE_NONE = common dso_local global i64 0, align 8
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DISP_TILE_SURFACE_SWIZZLING = common dso_local global i32 0, align 4
@TILECTL = common dso_local global i32 0, align 4
@TILECTL_SWZCTL = common dso_local global i32 0, align 4
@ARB_MODE = common dso_local global i32 0, align 4
@ARB_MODE_SWIZZLE_SNB = common dso_local global i32 0, align 4
@ARB_MODE_SWIZZLE_IVB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_init_swizzling(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @I915_BIT_6_SWIZZLE_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  br label %58

20:                                               ; preds = %12
  %21 = load i32, i32* @DISP_ARB_CTL, align 4
  %22 = load i32, i32* @DISP_ARB_CTL, align 4
  %23 = call i32 @I915_READ(i32 %22)
  %24 = load i32, i32* @DISP_TILE_SURFACE_SWIZZLING, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @I915_WRITE(i32 %21, i32 %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i64 @IS_GEN5(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %58

31:                                               ; preds = %20
  %32 = load i32, i32* @TILECTL, align 4
  %33 = load i32, i32* @TILECTL, align 4
  %34 = call i32 @I915_READ(i32 %33)
  %35 = load i32, i32* @TILECTL_SWZCTL, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @I915_WRITE(i32 %32, i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %39 = call i64 @IS_GEN6(%struct.drm_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @ARB_MODE, align 4
  %43 = load i32, i32* @ARB_MODE_SWIZZLE_SNB, align 4
  %44 = call i32 @_MASKED_BIT_ENABLE(i32 %43)
  %45 = call i32 @I915_WRITE(i32 %42, i32 %44)
  br label %58

46:                                               ; preds = %31
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = call i64 @IS_GEN7(%struct.drm_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @ARB_MODE, align 4
  %52 = load i32, i32* @ARB_MODE_SWIZZLE_IVB, align 4
  %53 = call i32 @_MASKED_BIT_ENABLE(i32 %52)
  %54 = call i32 @I915_WRITE(i32 %51, i32 %53)
  br label %57

55:                                               ; preds = %46
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %19, %30, %57, %41
  ret void
}

declare dso_local %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
