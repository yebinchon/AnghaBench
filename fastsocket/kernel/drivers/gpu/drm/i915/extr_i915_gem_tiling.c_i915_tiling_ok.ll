; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_tiling_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_tiling_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@I915_TILING_NONE = common dso_local global i32 0, align 4
@I915_TILING_Y = common dso_local global i32 0, align 4
@I965_FENCE_MAX_PITCH_VAL = common dso_local global i32 0, align 4
@I830_FENCE_MAX_SIZE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32)* @i915_tiling_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_tiling_ok(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @I915_TILING_NONE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %92

15:                                               ; preds = %4
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = call i64 @IS_GEN2(%struct.drm_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @I915_TILING_Y, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = call i64 @HAS_128_BYTE_Y_TILING(%struct.drm_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %15
  store i32 128, i32* %10, align 4
  br label %29

28:                                               ; preds = %23, %19
  store i32 512, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 4
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 128
  %38 = load i32, i32* @I965_FENCE_MAX_PITCH_VAL, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %92

41:                                               ; preds = %35
  br label %65

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 8192
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %92

46:                                               ; preds = %42
  %47 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %48 = call i64 @IS_GEN3(%struct.drm_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @I830_FENCE_MAX_SIZE_VAL, align 4
  %53 = shl i32 %52, 20
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %92

56:                                               ; preds = %50
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @I830_FENCE_MAX_SIZE_VAL, align 4
  %60 = shl i32 %59, 19
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %92

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %67 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 4
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %92

78:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %92

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %92

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %92

91:                                               ; preds = %84
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %90, %83, %78, %77, %62, %55, %45, %40, %14
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i64 @HAS_128_BYTE_Y_TILING(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN3(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
