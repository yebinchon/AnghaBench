; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"i915_gem_object\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@I915_NUM_RINGS = common dso_local global i32 0, align 4
@I915_MAX_NUM_FENCES = common dso_local global i32 0, align 4
@i915_gem_retire_work_handler = common dso_local global i32 0, align 4
@MI_ARB_STATE = common dso_local global i32 0, align 4
@MI_ARB_C3_LP_WRITE_ENABLE = common dso_local global i32 0, align 4
@I915_EXEC_CONSTANTS_REL_GENERAL = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@i915_gem_inactive_shrink = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_load(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %9 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %8, i32* null)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 7
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 6
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %44, %1
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @I915_NUM_RINGS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @init_ring_lists(i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %32

47:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @I915_MAX_NUM_FENCES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* @i915_gem_retire_work_handler, align 4
  %69 = call i32 @INIT_DELAYED_WORK(i32* %67, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @init_waitqueue_head(i32* %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %75 = call i64 @IS_GEN3(%struct.drm_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load i32, i32* @MI_ARB_STATE, align 4
  %79 = load i32, i32* @MI_ARB_C3_LP_WRITE_ENABLE, align 4
  %80 = call i32 @_MASKED_BIT_ENABLE(i32 %79)
  %81 = call i32 @I915_WRITE(i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %77, %64
  %83 = load i32, i32* @I915_EXEC_CONSTANTS_REL_GENERAL, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %87 = load i32, i32* @DRIVER_MODESET, align 4
  %88 = call i32 @drm_core_check_feature(%struct.drm_device* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 3, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %82
  %94 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %95 = call %struct.TYPE_12__* @INTEL_INFO(%struct.drm_device* %94)
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %97, 4
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %101 = call i64 @IS_I945G(%struct.drm_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %105 = call i64 @IS_I945GM(%struct.drm_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %109 = call i64 @IS_G33(%struct.drm_device* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %103, %99, %93
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i32 16, i32* %113, align 4
  br label %117

114:                                              ; preds = %107
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i32 8, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %119 = call i32 @i915_gem_reset_fences(%struct.drm_device* %118)
  %120 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %121 = call i32 @i915_gem_detect_bit_6_swizzle(%struct.drm_device* %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = call i32 @init_waitqueue_head(i32* %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* @i915_gem_inactive_shrink, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* @DEFAULT_SEEKS, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = call i32 @register_shrinker(%struct.TYPE_11__* %140)
  ret void
}

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_ring_lists(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @IS_GEN3(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.TYPE_12__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @IS_I945G(%struct.drm_device*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i64 @IS_G33(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_reset_fences(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_detect_bit_6_swizzle(%struct.drm_device*) #1

declare dso_local i32 @register_shrinker(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
