; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_switch_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_switch_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.i915_hw_context*, %struct.TYPE_2__* }
%struct.i915_hw_context = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_ring_buffer*, i64 }
%struct.drm_file = type { i32 }

@RCS = common dso_local global i64 0, align 8
@DEFAULT_CONTEXT_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_switch_context(%struct.intel_ring_buffer* %0, %struct.drm_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.i915_hw_context*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %23, align 8
  %25 = load i64, i64* @RCS, align 8
  %26 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %24, i64 %25
  %27 = icmp ne %struct.intel_ring_buffer* %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %58

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DEFAULT_CONTEXT_ID, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %34, i32 0, i32 0
  %36 = load %struct.i915_hw_context*, %struct.i915_hw_context** %35, align 8
  store %struct.i915_hw_context* %36, %struct.i915_hw_context** %9, align 8
  br label %55

37:                                               ; preds = %29
  %38 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %39 = icmp eq %struct.drm_file* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %58

43:                                               ; preds = %37
  %44 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %45 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.i915_hw_context* @i915_gem_context_get(i32 %46, i32 %47)
  store %struct.i915_hw_context* %48, %struct.i915_hw_context** %9, align 8
  %49 = load %struct.i915_hw_context*, %struct.i915_hw_context** %9, align 8
  %50 = icmp eq %struct.i915_hw_context* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.i915_hw_context*, %struct.i915_hw_context** %9, align 8
  %57 = call i32 @do_switch(%struct.i915_hw_context* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %51, %40, %28, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.i915_hw_context* @i915_gem_context_get(i32, i32) #1

declare dso_local i32 @do_switch(%struct.i915_hw_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
