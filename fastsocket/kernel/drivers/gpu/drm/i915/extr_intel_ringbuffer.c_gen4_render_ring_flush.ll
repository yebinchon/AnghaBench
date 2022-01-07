; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen4_render_ring_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen4_render_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@MI_FLUSH = common dso_local global i32 0, align 4
@MI_NO_WRITE_FLUSH = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_RENDER = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_INSTRUCTION = common dso_local global i32 0, align 4
@MI_EXE_FLUSH = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_COMMAND = common dso_local global i32 0, align 4
@MI_INVALIDATE_ISP = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32, i32)* @gen4_render_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen4_render_ring_flush(%struct.intel_ring_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load i32, i32* @MI_FLUSH, align 4
  %15 = load i32, i32* @MI_NO_WRITE_FLUSH, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @I915_GEM_DOMAIN_RENDER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @MI_NO_WRITE_FLUSH, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @I915_GEM_DOMAIN_INSTRUCTION, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @MI_EXE_FLUSH, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @I915_GEM_DOMAIN_COMMAND, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %44 = call i64 @IS_G4X(%struct.drm_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %48 = call i64 @IS_GEN5(%struct.drm_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @MI_INVALIDATE_ISP, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %46, %37
  %55 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %56 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %55, i32 2)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %70

61:                                               ; preds = %54
  %62 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %62, i32 %63)
  %65 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %66 = load i32, i32* @MI_NOOP, align 4
  %67 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %65, i32 %66)
  %68 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %69 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %61, %59
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
