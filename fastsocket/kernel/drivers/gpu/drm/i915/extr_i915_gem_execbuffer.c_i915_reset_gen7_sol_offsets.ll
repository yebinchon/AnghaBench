; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_reset_gen7_sol_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_reset_gen7_sol_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_ring_buffer* }
%struct.intel_ring_buffer = type { i32 }

@RCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.intel_ring_buffer*)* @i915_reset_gen7_sol_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_reset_gen7_sol_offsets(%struct.drm_device* %0, %struct.intel_ring_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.intel_ring_buffer* %1, %struct.intel_ring_buffer** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call i32 @IS_GEN7(%struct.drm_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %18, align 8
  %20 = load i64, i64* @RCS, align 8
  %21 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %19, i64 %20
  %22 = icmp ne %struct.intel_ring_buffer* %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %51

24:                                               ; preds = %15
  %25 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %26 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %25, i32 12)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %37 = call i32 @MI_LOAD_REGISTER_IMM(i32 1)
  %38 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %36, i32 %37)
  %39 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @GEN7_SO_WRITE_OFFSET(i32 %40)
  %42 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %39, i32 %41)
  %43 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %44 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %43, i32 0)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %50 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %29, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @GEN7_SO_WRITE_OFFSET(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
