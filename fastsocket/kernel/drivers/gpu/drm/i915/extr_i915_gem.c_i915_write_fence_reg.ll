; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_write_fence_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_write_fence_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_i915_gem_object = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I915_FENCE_START_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"object 0x%08x [fenceable? %d] not 1M or pot-size (0x%08x) aligned\0A\00", align 1
@I915_TILING_Y = common dso_local global i64 0, align 8
@I830_FENCE_TILING_Y_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_REG_VALID = common dso_local global i32 0, align 4
@FENCE_REG_830_0 = common dso_local global i32 0, align 4
@FENCE_REG_945_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.drm_i915_gem_object*)* @i915_write_fence_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_write_fence_reg(%struct.drm_device* %0, i32 %1, %struct.drm_i915_gem_object* %2) #0 {
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
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %16 = icmp ne %struct.drm_i915_gem_object* %15, null
  br i1 %16, label %17, label %102

17:                                               ; preds = %3
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I915_FENCE_START_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 0, %32
  %34 = and i32 %31, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %37, %30, %17
  %46 = phi i1 [ true, %30 ], [ true, %17 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @WARN(i32 %47, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %54)
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @I915_TILING_Y, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = call i64 @HAS_128_BYTE_Y_TILING(%struct.drm_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 128, i32* %11, align 4
  br label %67

66:                                               ; preds = %61, %45
  store i32 512, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %69 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ffs(i32 %73)
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %77 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %8, align 4
  %79 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %80 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @I915_TILING_Y, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load i32, i32* @I830_FENCE_TILING_Y_SHIFT, align 4
  %86 = shl i32 1, %85
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %84, %67
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @I915_FENCE_SIZE_BITS(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @I830_FENCE_PITCH_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @I830_FENCE_REG_VALID, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %103

102:                                              ; preds = %3
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 8
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @FENCE_REG_830_0, align 4
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 %108, 4
  %110 = add nsw i32 %107, %109
  store i32 %110, i32* %5, align 4
  br label %117

111:                                              ; preds = %103
  %112 = load i32, i32* @FENCE_REG_945_8, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %113, 8
  %115 = mul nsw i32 %114, 4
  %116 = add nsw i32 %112, %115
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %106
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @I915_WRITE(i32 %118, i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @POSTING_READ(i32 %121)
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @HAS_128_BYTE_Y_TILING(%struct.drm_device*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @I915_FENCE_SIZE_BITS(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
