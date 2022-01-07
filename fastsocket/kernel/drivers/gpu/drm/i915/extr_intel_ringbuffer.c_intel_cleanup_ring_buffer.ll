; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_cleanup_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_cleanup_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32 (%struct.intel_ring_buffer*)*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"failed to quiesce %s whilst cleaning up: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_cleanup_ring_buffer(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca %struct.intel_ring_buffer*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %2, align 8
  %5 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %3, align 8
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %17 = call i32 @intel_ring_idle(%struct.intel_ring_buffer* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %10
  %27 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %28 = call i32 @I915_WRITE_CTL(%struct.intel_ring_buffer* %27, i32 0)
  %29 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %34 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @i915_gem_object_unpin(%struct.TYPE_4__* %35)
  %37 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @drm_gem_object_unreference(i32* %40)
  %42 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %43 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %42, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %45 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %44, i32 0, i32 0
  %46 = load i32 (%struct.intel_ring_buffer*)*, i32 (%struct.intel_ring_buffer*)** %45, align 8
  %47 = icmp ne i32 (%struct.intel_ring_buffer*)* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %26
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %50 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %49, i32 0, i32 0
  %51 = load i32 (%struct.intel_ring_buffer*)*, i32 (%struct.intel_ring_buffer*)** %50, align 8
  %52 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %53 = call i32 %51(%struct.intel_ring_buffer* %52)
  br label %54

54:                                               ; preds = %48, %26
  %55 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %56 = call i32 @cleanup_status_page(%struct.intel_ring_buffer* %55)
  br label %57

57:                                               ; preds = %54, %9
  ret void
}

declare dso_local i32 @intel_ring_idle(%struct.intel_ring_buffer*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @I915_WRITE_CTL(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @cleanup_status_page(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
