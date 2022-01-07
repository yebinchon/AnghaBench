; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_mi_set_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_mi_set_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32 (%struct.intel_ring_buffer*, i32, i32)*, i32, i64 }
%struct.i915_hw_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I915_GEM_GPU_DOMAINS = common dso_local global i32 0, align 4
@MI_ARB_ON_OFF = common dso_local global i32 0, align 4
@MI_ARB_DISABLE = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@MI_SET_CONTEXT = common dso_local global i32 0, align 4
@MI_MM_SPACE_GTT = common dso_local global i32 0, align 4
@MI_SAVE_EXT_STATE_EN = common dso_local global i32 0, align 4
@MI_RESTORE_EXT_STATE_EN = common dso_local global i32 0, align 4
@MI_ARB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, %struct.i915_hw_context*, i32)* @mi_set_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi_set_context(%struct.intel_ring_buffer* %0, %struct.i915_hw_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca %struct.i915_hw_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store %struct.i915_hw_context* %1, %struct.i915_hw_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @IS_GEN6(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %20, i32 0, i32 0
  %22 = load i32 (%struct.intel_ring_buffer*, i32, i32)*, i32 (%struct.intel_ring_buffer*, i32, i32)** %21, align 8
  %23 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %24 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %25 = call i32 %22(%struct.intel_ring_buffer* %23, i32 %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %98

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %14, %3
  %32 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %33 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %32, i32 6)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %98

38:                                               ; preds = %31
  %39 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_GEN7(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %46 = load i32, i32* @MI_ARB_ON_OFF, align 4
  %47 = load i32, i32* @MI_ARB_DISABLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %45, i32 %48)
  br label %54

50:                                               ; preds = %38
  %51 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %52 = load i32, i32* @MI_NOOP, align 4
  %53 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %56 = load i32, i32* @MI_NOOP, align 4
  %57 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %55, i32 %56)
  %58 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %59 = load i32, i32* @MI_SET_CONTEXT, align 4
  %60 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %58, i32 %59)
  %61 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %62 = load %struct.i915_hw_context*, %struct.i915_hw_context** %6, align 8
  %63 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MI_MM_SPACE_GTT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MI_SAVE_EXT_STATE_EN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MI_RESTORE_EXT_STATE_EN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %61, i32 %74)
  %76 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %77 = load i32, i32* @MI_NOOP, align 4
  %78 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %76, i32 %77)
  %79 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %80 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_GEN7(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %54
  %85 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %86 = load i32, i32* @MI_ARB_ON_OFF, align 4
  %87 = load i32, i32* @MI_ARB_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %85, i32 %88)
  br label %94

90:                                               ; preds = %54
  %91 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %92 = load i32, i32* @MI_NOOP, align 4
  %93 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %96 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %36, %28
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @IS_GEN6(i32) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i64 @IS_GEN7(i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
