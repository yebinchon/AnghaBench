; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_emit_post_sync_nonzero_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_emit_post_sync_nonzero_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { %struct.pipe_control* }
%struct.pipe_control = type { i32 }

@PIPE_CONTROL_CS_STALL = common dso_local global i32 0, align 4
@PIPE_CONTROL_STALL_AT_SCOREBOARD = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @intel_emit_post_sync_nonzero_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_emit_post_sync_nonzero_flush(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca %struct.pipe_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %7 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %7, i32 0, i32 0
  %9 = load %struct.pipe_control*, %struct.pipe_control** %8, align 8
  store %struct.pipe_control* %9, %struct.pipe_control** %4, align 8
  %10 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %11 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 128
  store i32 %13, i32* %5, align 4
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %15 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %14, i32 6)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %22 = call i32 @GFX_OP_PIPE_CONTROL(i32 5)
  %23 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %21, i32 %22)
  %24 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %25 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %26 = load i32, i32* @PIPE_CONTROL_STALL_AT_SCOREBOARD, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %24, i32 %27)
  %29 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %29, i32 %32)
  %34 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %35 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %34, i32 0)
  %36 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %37 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %36, i32 0)
  %38 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %39 = load i32, i32* @MI_NOOP, align 4
  %40 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %38, i32 %39)
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %42 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %41)
  %43 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %44 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %43, i32 6)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %20
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %70

49:                                               ; preds = %20
  %50 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %51 = call i32 @GFX_OP_PIPE_CONTROL(i32 5)
  %52 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %50, i32 %51)
  %53 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %54 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %55 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %53, i32 %54)
  %56 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %56, i32 %59)
  %61 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %62 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %61, i32 0)
  %63 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %64 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %63, i32 0)
  %65 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %66 = load i32, i32* @MI_NOOP, align 4
  %67 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %65, i32 %66)
  %68 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %69 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %49, %47, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

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
