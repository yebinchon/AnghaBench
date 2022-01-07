; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_12__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.drm_i915_master_private* }
%struct.drm_i915_master_private = type { %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"sarea not found assuming DRI2 userspace\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Client tried to initialize ringbuffer in GEM mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_16__*)* @i915_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_initialize(%struct.drm_device* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.drm_i915_master_private*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %17, align 8
  store %struct.drm_i915_master_private* %18, %struct.drm_i915_master_private** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = call %struct.TYPE_17__* @drm_getsarea(%struct.drm_device* %19)
  %21 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %22 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %21, i32 0, i32 1
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %22, align 8
  %23 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %24 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %29 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %28, i32 0, i32 1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = bitcast i32* %38 to %struct.TYPE_14__*
  %40 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %41 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %40, i32 0, i32 0
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %41, align 8
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %27
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = call %struct.TYPE_18__* @LP_RING(%struct.TYPE_15__* %50)
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = call i32 @i915_dma_cleanup(%struct.drm_device* %56)
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %112

61:                                               ; preds = %49
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @intel_render_ring_init_dri(%struct.drm_device* %62, i32 %65, i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = call i32 @i915_dma_cleanup(%struct.drm_device* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %112

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %44
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %100 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = icmp ne %struct.TYPE_14__* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %77
  %104 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %105 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %103, %77
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %72, %55
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_17__* @drm_getsarea(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.TYPE_18__* @LP_RING(%struct.TYPE_15__*) #1

declare dso_local i32 @i915_dma_cleanup(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @intel_render_ring_init_dri(%struct.drm_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
