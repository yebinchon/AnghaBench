; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_pc_render_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_pc_render_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, %struct.pipe_control* }
%struct.pipe_control = type { i32 }

@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@PIPE_CONTROL_WRITE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT = common dso_local global i32 0, align 4
@PIPE_CONTROL_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @pc_render_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pc_render_add_request(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca %struct.pipe_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %7 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %7, i32 0, i32 1
  %9 = load %struct.pipe_control*, %struct.pipe_control** %8, align 8
  store %struct.pipe_control* %9, %struct.pipe_control** %4, align 8
  %10 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %11 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 128
  store i32 %13, i32* %5, align 4
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %15 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %14, i32 32)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %22 = call i32 @GFX_OP_PIPE_CONTROL(i32 4)
  %23 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PIPE_CONTROL_WRITE_FLUSH, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %21, i32 %28)
  %30 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %31 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %32 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %30, i32 %35)
  %37 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %38 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %37, i32 %40)
  %42 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %43 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %42, i32 0)
  %44 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PIPE_CONTROL_FLUSH(%struct.intel_ring_buffer* %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 128
  store i32 %48, i32* %5, align 4
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @PIPE_CONTROL_FLUSH(%struct.intel_ring_buffer* %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 128
  store i32 %53, i32* %5, align 4
  %54 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @PIPE_CONTROL_FLUSH(%struct.intel_ring_buffer* %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 128
  store i32 %58, i32* %5, align 4
  %59 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @PIPE_CONTROL_FLUSH(%struct.intel_ring_buffer* %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 128
  store i32 %63, i32* %5, align 4
  %64 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @PIPE_CONTROL_FLUSH(%struct.intel_ring_buffer* %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 128
  store i32 %68, i32* %5, align 4
  %69 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @PIPE_CONTROL_FLUSH(%struct.intel_ring_buffer* %69, i32 %70)
  %72 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %73 = call i32 @GFX_OP_PIPE_CONTROL(i32 4)
  %74 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @PIPE_CONTROL_WRITE_FLUSH, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PIPE_CONTROL_NOTIFY, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %72, i32 %81)
  %83 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %84 = load %struct.pipe_control*, %struct.pipe_control** %4, align 8
  %85 = getelementptr inbounds %struct.pipe_control, %struct.pipe_control* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %83, i32 %88)
  %90 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %91 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %92 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %90, i32 %93)
  %95 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %96 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %95, i32 0)
  %97 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %98 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %20, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @GFX_OP_PIPE_CONTROL(i32) #1

declare dso_local i32 @PIPE_CONTROL_FLUSH(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
