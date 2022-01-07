; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_wait_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_wait_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_i915_master_private* }
%struct.drm_i915_master_private = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.intel_ring_buffer = type { i32 (%struct.intel_ring_buffer*)*, i32, i64 (%struct.intel_ring_buffer*)* }

@.str = private unnamed_addr constant [25 x i8] c"irq_nr=%d breadcrumb=%d\0A\00", align 1
@I915_BOX_WAIT = common dso_local global i32 0, align 4
@DRM_HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"EBUSY -- rec: %d emitted: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @i915_wait_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_wait_irq(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.drm_i915_master_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_ring_buffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %19, align 8
  store %struct.drm_i915_master_private* %20, %struct.drm_i915_master_private** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = call %struct.intel_ring_buffer* @LP_RING(%struct.TYPE_12__* %21)
  store %struct.intel_ring_buffer* %22, %struct.intel_ring_buffer** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = call i32 @READ_BREADCRUMB(%struct.TYPE_12__* %24)
  %26 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = call i32 @READ_BREADCRUMB(%struct.TYPE_12__* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %33 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = call i32 @READ_BREADCRUMB(%struct.TYPE_12__* %37)
  %39 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %40 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %31
  store i32 0, i32* %3, align 4
  br label %110

44:                                               ; preds = %2
  %45 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %46 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* @I915_BOX_WAIT, align 4
  %51 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %7, align 8
  %52 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %50
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %59 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %58, i32 0, i32 2
  %60 = load i64 (%struct.intel_ring_buffer*)*, i64 (%struct.intel_ring_buffer*)** %59, align 8
  %61 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %62 = call i64 %60(%struct.intel_ring_buffer* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %67 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DRM_HZ, align 4
  %70 = mul nsw i32 3, %69
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = call i32 @READ_BREADCRUMB(%struct.TYPE_12__* %71)
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @DRM_WAIT_ON(i32 %65, i32 %68, i32 %70, i32 %75)
  %77 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %78 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %77, i32 0, i32 0
  %79 = load i32 (%struct.intel_ring_buffer*)*, i32 (%struct.intel_ring_buffer*)** %78, align 8
  %80 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %81 = call i32 %79(%struct.intel_ring_buffer* %80)
  br label %94

82:                                               ; preds = %57
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = call i32 @READ_BREADCRUMB(%struct.TYPE_12__* %83)
  %85 = load i32, i32* %5, align 4
  %86 = icmp sge i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @wait_for(i32 %87, i32 3000)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %82
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = call i32 @READ_BREADCRUMB(%struct.TYPE_12__* %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %99, %94
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %43
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.intel_ring_buffer* @LP_RING(%struct.TYPE_12__*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @READ_BREADCRUMB(%struct.TYPE_12__*) #1

declare dso_local i32 @DRM_WAIT_ON(i32, i32, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
