; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_i830_dispatch_execbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_i830_dispatch_execbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32 }

@I915_DISPATCH_PINNED = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER = common dso_local global i32 0, align 4
@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@MI_BATCH_NON_SECURE = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@I830_BATCH_LIMIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XY_SRC_COPY_BLT_CMD = common dso_local global i32 0, align 4
@XY_SRC_COPY_BLT_WRITE_ALPHA = common dso_local global i32 0, align 4
@XY_SRC_COPY_BLT_WRITE_RGB = common dso_local global i32 0, align 4
@BLT_DEPTH_32 = common dso_local global i32 0, align 4
@BLT_ROP_GXCOPY = common dso_local global i32 0, align 4
@MI_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32, i32, i32)* @i830_dispatch_execbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i830_dispatch_execbuffer(%struct.intel_ring_buffer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @I915_DISPATCH_PINNED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %4
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %19 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %18, i32 4)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %132

24:                                               ; preds = %17
  %25 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %26 = load i32, i32* @MI_BATCH_BUFFER, align 4
  %27 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %25, i32 %26)
  %28 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @MI_BATCH_NON_SECURE, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 0, %34 ], [ %36, %35 ]
  %39 = or i32 %29, %38
  %40 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %28, i32 %39)
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = sub nsw i32 %44, 8
  %46 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %41, i32 %45)
  %47 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %48 = load i32, i32* @MI_NOOP, align 4
  %49 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %47, i32 %48)
  %50 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %51 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %50)
  br label %131

52:                                               ; preds = %4
  %53 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %53, i32 0, i32 0
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %54, align 8
  store %struct.drm_i915_gem_object* %55, %struct.drm_i915_gem_object** %11, align 8
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @I830_BATCH_LIMIT, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %132

65:                                               ; preds = %52
  %66 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %67 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %66, i32 12)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %132

72:                                               ; preds = %65
  %73 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %74 = load i32, i32* @XY_SRC_COPY_BLT_CMD, align 4
  %75 = load i32, i32* @XY_SRC_COPY_BLT_WRITE_ALPHA, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @XY_SRC_COPY_BLT_WRITE_RGB, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %73, i32 %78)
  %80 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %81 = load i32, i32* @BLT_DEPTH_32, align 4
  %82 = load i32, i32* @BLT_ROP_GXCOPY, align 4
  %83 = or i32 %81, %82
  %84 = or i32 %83, 4096
  %85 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %80, i32 %84)
  %86 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %87 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %86, i32 0)
  %88 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DIV_ROUND_UP(i32 %89, i32 4096)
  %91 = shl i32 %90, 16
  %92 = or i32 %91, 1024
  %93 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %88, i32 %92)
  %94 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %94, i32 %95)
  %97 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %98 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %97, i32 0)
  %99 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %100 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %99, i32 4096)
  %101 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %101, i32 %102)
  %104 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %105 = load i32, i32* @MI_FLUSH, align 4
  %106 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %104, i32 %105)
  %107 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %108 = load i32, i32* @MI_BATCH_BUFFER, align 4
  %109 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %107, i32 %108)
  %110 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %72
  br label %119

117:                                              ; preds = %72
  %118 = load i32, i32* @MI_BATCH_NON_SECURE, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = phi i32 [ 0, %116 ], [ %118, %117 ]
  %121 = or i32 %111, %120
  %122 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %110, i32 %121)
  %123 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  %127 = sub nsw i32 %126, 8
  %128 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %123, i32 %127)
  %129 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %130 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %129)
  br label %131

131:                                              ; preds = %119, %37
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %70, %62, %22
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
