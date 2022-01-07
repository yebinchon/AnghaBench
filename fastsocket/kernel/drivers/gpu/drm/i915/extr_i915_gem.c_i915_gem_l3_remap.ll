; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_l3_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_l3_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@GEN7_MISCCPCTL = common dso_local global i64 0, align 8
@GEN7_DOP_CLOCK_GATE_ENABLE = common dso_local global i64 0, align 8
@GEN7_L3LOG_SIZE = common dso_local global i32 0, align 4
@GEN7_L3LOG_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"0x%x was already programmed to %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Clearing remapped register\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_l3_remap(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call i32 @HAS_L3_GPU_CACHE(%struct.drm_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %103

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %103

21:                                               ; preds = %14
  %22 = load i64, i64* @GEN7_MISCCPCTL, align 8
  %23 = call i64 @I915_READ(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* @GEN7_MISCCPCTL, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @GEN7_DOP_CLOCK_GATE_ENABLE, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = call i32 @I915_WRITE(i64 %24, i64 %28)
  %30 = load i64, i64* @GEN7_MISCCPCTL, align 8
  %31 = call i32 @POSTING_READ(i64 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %94, %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @GEN7_L3LOG_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  %37 = load i64, i64* @GEN7_L3LOG_BASE, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i64 @I915_READ(i64 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %45, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load i64, i64* @GEN7_L3LOG_BASE, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %44, %36
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sdiv i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  %78 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %66, %63
  %80 = load i64, i64* @GEN7_L3LOG_BASE, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sdiv i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @I915_WRITE(i64 %83, i64 %92)
  br label %94

94:                                               ; preds = %79
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %5, align 4
  br label %32

97:                                               ; preds = %32
  %98 = load i64, i64* @GEN7_L3LOG_BASE, align 8
  %99 = call i32 @POSTING_READ(i64 %98)
  %100 = load i64, i64* @GEN7_MISCCPCTL, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @I915_WRITE(i64 %100, i64 %101)
  br label %103

103:                                              ; preds = %97, %20, %13
  ret void
}

declare dso_local i32 @HAS_L3_GPU_CACHE(%struct.drm_device*) #1

declare dso_local i64 @I915_READ(i64) #1

declare dso_local i32 @I915_WRITE(i64, i64) #1

declare dso_local i32 @POSTING_READ(i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
