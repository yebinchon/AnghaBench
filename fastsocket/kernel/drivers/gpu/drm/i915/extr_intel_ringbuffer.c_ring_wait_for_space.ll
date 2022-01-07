; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_ring_wait_for_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_ring_wait_for_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_6__*, %struct.drm_i915_private* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_i915_master_private* }
%struct.drm_i915_master_private = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@I915_BOX_WAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32)* @ring_wait_for_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_wait_for_space(%struct.intel_ring_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_master_private*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %11, i32 0, i32 2
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %7, align 8
  %17 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @intel_ring_wait_request(%struct.intel_ring_buffer* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %28 = call i32 @trace_i915_ring_wait_begin(%struct.intel_ring_buffer* %27)
  %29 = load i32, i32* @jiffies, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 60, %30
  %32 = add nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %93, %26
  %35 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %36 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %35)
  %37 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %40 = call i32 @ring_space(%struct.intel_ring_buffer* %39)
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %50 = call i32 @trace_i915_ring_wait_end(%struct.intel_ring_buffer* %49)
  store i32 0, i32* %3, align 4
  br label %104

51:                                               ; preds = %34
  %52 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %51
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %64, align 8
  store %struct.drm_i915_master_private* %65, %struct.drm_i915_master_private** %10, align 8
  %66 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %10, align 8
  %67 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load i32, i32* @I915_BOX_WAIT, align 4
  %72 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %10, align 8
  %73 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %58
  br label %79

79:                                               ; preds = %78, %51
  %80 = call i32 @msleep(i32 1)
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %82 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %81, i32 0, i32 1
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %84 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @i915_gem_check_wedge(i32* %82, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %104

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* @jiffies, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @time_after(i32 %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %34, label %99

99:                                               ; preds = %93
  %100 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %101 = call i32 @trace_i915_ring_wait_end(%struct.intel_ring_buffer* %100)
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %90, %48, %24
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @intel_ring_wait_request(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @trace_i915_ring_wait_begin(%struct.intel_ring_buffer*) #1

declare dso_local i32 @I915_READ_HEAD(%struct.intel_ring_buffer*) #1

declare dso_local i32 @ring_space(%struct.intel_ring_buffer*) #1

declare dso_local i32 @trace_i915_ring_wait_end(%struct.intel_ring_buffer*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i915_gem_check_wedge(i32*, i32) #1

declare dso_local i32 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
