; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_render_ring_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_render_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.pipe_control* }
%struct.pipe_control = type { i32 }

@PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DEPTH_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_CS_STALL = common dso_local global i32 0, align 4
@PIPE_CONTROL_TLB_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_VF_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_CONST_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_STATE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i32, i32)* @gen6_render_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_render_ring_flush(%struct.intel_ring_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %12, i32 0, i32 0
  %14 = load %struct.pipe_control*, %struct.pipe_control** %13, align 8
  store %struct.pipe_control* %14, %struct.pipe_control** %9, align 8
  %15 = load %struct.pipe_control*, %struct.pipe_control** %9, align 8
  %16 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 128
  store i32 %18, i32* %10, align 4
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %20 = call i32 @intel_emit_post_sync_nonzero_flush(%struct.intel_ring_buffer* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* @PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @PIPE_CONTROL_DEPTH_CACHE_FLUSH, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i32, i32* @PIPE_CONTROL_TLB_INVALIDATE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @PIPE_CONTROL_VF_CACHE_INVALIDATE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @PIPE_CONTROL_CONST_CACHE_INVALIDATE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @PIPE_CONTROL_STATE_CACHE_INVALIDATE, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %61 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %41, %38
  %66 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %67 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %66, i32 4)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %88

72:                                               ; preds = %65
  %73 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %74 = call i32 @GFX_OP_PIPE_CONTROL(i32 4)
  %75 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %73, i32 %74)
  %76 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %76, i32 %77)
  %79 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %79, i32 %82)
  %84 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %85 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %84, i32 0)
  %86 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %87 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %72, %70, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @intel_emit_post_sync_nonzero_flush(%struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @GFX_OP_PIPE_CONTROL(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
