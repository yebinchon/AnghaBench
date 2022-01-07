; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen7_render_ring_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen7_render_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.pipe_control* }
%struct.pipe_control = type { i64 }

@PIPE_CONTROL_CS_STALL = common dso_local global i64 0, align 8
@PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH = common dso_local global i64 0, align 8
@PIPE_CONTROL_DEPTH_CACHE_FLUSH = common dso_local global i64 0, align 8
@PIPE_CONTROL_TLB_INVALIDATE = common dso_local global i64 0, align 8
@PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE = common dso_local global i64 0, align 8
@PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE = common dso_local global i64 0, align 8
@PIPE_CONTROL_VF_CACHE_INVALIDATE = common dso_local global i64 0, align 8
@PIPE_CONTROL_CONST_CACHE_INVALIDATE = common dso_local global i64 0, align 8
@PIPE_CONTROL_STATE_CACHE_INVALIDATE = common dso_local global i64 0, align 8
@PIPE_CONTROL_QW_WRITE = common dso_local global i64 0, align 8
@PIPE_CONTROL_GLOBAL_GTT_IVB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*, i64, i64)* @gen7_render_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen7_render_ring_flush(%struct.intel_ring_buffer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pipe_control*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %12, i32 0, i32 0
  %14 = load %struct.pipe_control*, %struct.pipe_control** %13, align 8
  store %struct.pipe_control* %14, %struct.pipe_control** %9, align 8
  %15 = load %struct.pipe_control*, %struct.pipe_control** %9, align 8
  %16 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 128
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* @PIPE_CONTROL_CS_STALL, align 8
  %20 = load i64, i64* %8, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i64, i64* @PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH, align 8
  %26 = load i64, i64* %8, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* @PIPE_CONTROL_DEPTH_CACHE_FLUSH, align 8
  %29 = load i64, i64* %8, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load i64, i64* @PIPE_CONTROL_TLB_INVALIDATE, align 8
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* @PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, align 8
  %39 = load i64, i64* %8, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 8
  %42 = load i64, i64* %8, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* @PIPE_CONTROL_VF_CACHE_INVALIDATE, align 8
  %45 = load i64, i64* %8, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* @PIPE_CONTROL_CONST_CACHE_INVALIDATE, align 8
  %48 = load i64, i64* %8, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* @PIPE_CONTROL_STATE_CACHE_INVALIDATE, align 8
  %51 = load i64, i64* %8, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* @PIPE_CONTROL_QW_WRITE, align 8
  %54 = load i64, i64* %8, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* @PIPE_CONTROL_GLOBAL_GTT_IVB, align 8
  %57 = load i64, i64* %8, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %60 = call i32 @gen7_render_ring_cs_stall_wa(%struct.intel_ring_buffer* %59)
  br label %61

61:                                               ; preds = %34, %31
  %62 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %63 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %62, i32 4)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %82

68:                                               ; preds = %61
  %69 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %70 = call i64 @GFX_OP_PIPE_CONTROL(i32 4)
  %71 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %69, i64 %70)
  %72 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %72, i64 %73)
  %75 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %75, i64 %76)
  %78 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %79 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %78, i64 0)
  %80 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %81 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %68, %66
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @gen7_render_ring_cs_stall_wa(%struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i64) #1

declare dso_local i64 @GFX_OP_PIPE_CONTROL(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
